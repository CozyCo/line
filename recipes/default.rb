#
# Cookbook Name:: line
# Recipe:: default
#
# Copyright 2008-2009, Opscode, Inc.
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
#

append_if_no_line "example 1" do
  file "/tmp/example1"
  string "HI THERE I AM STRING"
end

append_if_no_lines "example 2" do
  file "/tmp/example2"
  lines [ "string1", "string2" ]
end

comment_lines_matching "example3" do
  file "/tmp/example3"
  regex "^*.why_hello$"
  comment :bang
end

delete_lines_matching "example 4" do
  file "/tmp/example4"
  regex "^DELETEME*"
end

uncomment_lines_matching "example 5" do
  file "/tmp/example5"
  regex "UNCOMMENTME"
  comment :bang
end

# 'matching' vs 'containing'
# rubs chin

