@test "autogluon is the correct version" {
  run docker run gradientsky/autogluon:${TAG} pip3 show autogluon
  echo "${output}"

  [ $status -eq 0 ]
  [ "${lines[1]}" = "Version: 0.2.0" ]
}