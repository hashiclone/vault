/**
 * Copyright (c) HashiCorp, Inc.
 * SPDX-License-Identifier: MPL-2.0
 */

import { encodePath } from 'vault/utils/path-encoding-helpers';
import PkiConfigBaseAdapter from './base';

export default class PkiConfigClusterAdapter extends PkiConfigBaseAdapter {
  namespace = 'v1';

  _url(backend) {
    return `${this.buildURL()}/${encodePath(backend)}/config/cluster`;
  }
}
