class aide::default_rules {
  aide::rule { 'Checksums':
    rules => ['sha256', 'tiger'],
  }

  aide::rule { 'OwnerMode':
    rules => ['p', 'u', 'g', 'ftype'],
  }

  aide::rule { 'Size':
    rules => ['s', 'b'],
  }

  aide::rule { 'InodeData':
    rules => ['OwnerMode', 'n', 'i', 'Size', 'l', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
  }

  aide::rule { 'StaticFile':
    rules => ['m', 'c', 'Checksums']
  }

  aide::rule { 'RamdiskData':
    rules => ['OwnerMode', 'n', 'Size', 'l', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
  }

  aide::rule { 'Full':
    rules => ['InodeData', 'StaticFile'],
  }

  aide::rule { 'VarTime':
    rules => ['InodeData', 'Checksums'],
  }

  aide::rule { 'VarInode':
    rules => ['OwnerMode', 'n', 'Size', 'l', 'acl', 'xattrs', 'e2fsattrs', 'selinux', 'Checksums'],
  }

  aide::rule { 'VarFile':
    rules => ['OwnerMode', 'n', 'l', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
  }

  aide::rule { 'VarDir':
    rules => ['OwnerMode', 'n', 'i', 'acl', 'xattrs', 'e2fsattrs', 'selinux']
  }

  aide::rule { 'VarDirInode':
    rules => ['OwnerMode', 'n', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
  }

  aide::rule { 'VarDirTime':
    rules => ['InodeData'],
  }

  aide::rule { 'Log':
    rules => ['OwnerMode', 'n', 'S', 'acl', 'xattrs', 'e2fsattrs', 'selinux']
  }

  aide::rule { 'FreqRotLog':
    rules => ['OwnerMode', 'n', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
  }

  aide::rule { 'LowLog':
    rules => ['OwnerMode', 'n', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
  }

  aide::rule { 'SerMemberLog':
    rules => ['Full', 'I']
  }

  aide::rule { 'LoSerMemberLog':
    rules => ['SerMemberLog', 'ANF'],
  }

  aide::rule { 'HiSerMemberLog':
    rules => ['SerMemberLog', 'ARF'],
  }

  aide::rule { 'LowDELog':
    rules => ['SerMemberLog', 'ANF', 'ARF']
  }

  aide::rule { 'SerMemberDELog':
    rules => ['Full', 'ANF'],
  }

  aide::rule { 'LinkedLog':
    rules => ['OwnerMode', 'S', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
  }
}

