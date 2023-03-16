@test "autogluon is the correct version" {
  run docker run autogluon/autogluon:${TAG} pip3 show autogluon
  echo "${output}"

  [ $status -eq 0 ]
  [ "${lines[1]}" = "Version: 0.7.0" ]
}