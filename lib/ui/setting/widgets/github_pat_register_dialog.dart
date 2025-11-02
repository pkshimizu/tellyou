import 'package:flutter/material.dart';
import 'package:tellyou/ui/widgets.dart';

import 'github_pat_form.dart';

class GitHubPatRegisterDialog extends TDialog {
  GitHubPatRegisterDialog() : super(title: "Personal Access Token");

  @override
  Widget build(BuildContext context) {
    return GitHubPatForm();
  }
}
