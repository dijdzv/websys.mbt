// WebAudio API tests — AudioContext, OscillatorNode, GainNode
// Tests constructor, property access, node connection, enums

///|
/// Test AudioContext creation and basic properties.
pub fn test_audio_context() -> Unit {
  let ctx = @websys.AudioContext::new().unwrap()
  let base = ctx.to_base_audio_context()
  // State should be "suspended" (autoplay policy)
  let state = base.get_state()
  assert_true(
    state == @websys.AudioContextState::Suspended || state == @websys.AudioContextState::Running,
    label="AudioContext state is valid",
  )
  // Destination exists
  let dest = base.get_destination()
  let dest_node = dest.to_audio_node()
  // channel count should be > 0
  assert_true(
    dest_node.get_channel_count() > 0,
    label="destination channel count > 0",
  )
  // sample rate should be > 0
  assert_true(base.get_sample_rate() > 0.0, label="sample rate > 0")
  println("  audio_context: ok")
}

///|
/// Test OscillatorNode creation and properties.
pub fn test_oscillator_node() -> Unit {
  let ctx = @websys.AudioContext::new().unwrap()
  let base = ctx.to_base_audio_context()
  let osc = base.create_oscillator()
  // Default type is Sine
  assert_eq(
    osc.get_type(),
    @websys.OscillatorType::Sine,
    label="default type is Sine",
  )
  // Set type
  osc.set_type(@websys.OscillatorType::Square).unwrap()
  assert_eq(
    osc.get_type(),
    @websys.OscillatorType::Square,
    label="type set to Square",
  )
  // Frequency AudioParam
  let freq = osc.get_frequency()
  assert_true(freq.get_value() > 0.0, label="default frequency > 0")
  freq.set_value(880.0)
  assert_eq(freq.get_value(), 880.0, label="frequency set to 880")
  // Detune AudioParam
  let detune = osc.get_detune()
  assert_eq(detune.get_value(), 0.0, label="default detune is 0")
  println("  oscillator_node: ok")
}

///|
/// Test GainNode and audio graph connection.
pub fn test_gain_node_and_connect() -> Unit {
  let ctx = @websys.AudioContext::new().unwrap()
  let base = ctx.to_base_audio_context()
  let osc = base.create_oscillator()
  let gain = base.create_gain()
  // Gain default value
  let gain_param = gain.get_gain()
  assert_eq(gain_param.get_value(), 1.0, label="default gain is 1.0")
  gain_param.set_value(0.5)
  assert_eq(gain_param.get_value(), 0.5, label="gain set to 0.5")
  // Connect oscillator → gain → destination
  let osc_node = osc.to_audio_node()
  let gain_node = gain.to_audio_node()
  let dest = base.get_destination().to_audio_node()
  osc_node.connect(gain_node).unwrap() |> ignore
  gain_node.connect(dest).unwrap() |> ignore
  println("  gain_node_and_connect: ok")
}
