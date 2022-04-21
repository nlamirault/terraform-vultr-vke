# Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "vultr_kubernetes_node_pools" "this" {
  count = length(var.node_pools)

  cluster_id    = vultr_kubernetes.this.id
  node_quantity = var.node_pools[count.index].quantity
  plan          = var.node_pools[count.index].plan
  label         = var.node_pools[count.index].label
  tag           = var.node_pools[count.index].tag
}
