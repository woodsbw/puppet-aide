class aide::default_rules {
  #############################################################################
  #######################  ADDING SUB-PRIMITIVE TYPES  ########################
  #############################################################################
  
  aide::rule { 'Checksums':
    rules => ['sha256', 'tiger'],
    order => 05,
  }
  
  aide::rule { 'OwnerMode':
    rules => ['p', 'u', 'g', 'ftype'],
    order => 05,
  }
  
  aide::rule { 'Size':
    rules => ['s', 'b'],
    order => 05,
  }
  
  #############################################################################
  ########################  ADDING MORE COMPLEX TYPES  ########################
  #############################################################################
  
  aide::rule { 'InodeData':
    rules => ['OwnerMode', 'n', 'i', 'Size', 'l', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
    order => 10,
  }
  
  aide::rule { 'StaticFile':
    rules => ['m', 'c', 'Checksums'],
    order => 10,
  }
  
  aide::rule { 'RamdiskData':
    rules => ['OwnerMode', 'n', 'Size', 'l', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
    order => 10,
  }
  
  aide::rule { 'VarInode':
    rules => ['OwnerMode', 'n', 'Size', 'l', 'acl', 'xattrs', 'e2fsattrs', 'selinux', 'Checksums'],
    order => 10,
  }
  
  aide::rule { 'VarFile':
    rules => ['OwnerMode', 'n', 'l', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
    order => 10,
  }
  
  aide::rule { 'VarDir':
    rules => ['OwnerMode', 'n', 'i', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
    order => 10,
  }
  
  aide::rule { 'VarDirInode':
    rules => ['OwnerMode', 'n', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
    order => 10,
  }
  
  aide::rule { 'Log':
    rules => ['OwnerMode', 'n', 'S', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
    order => 10,
  }
  
  aide::rule { 'FreqRotLog':
    rules => ['OwnerMode', 'n', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
    order => 10,
  }
  
  aide::rule { 'LowLog':
    rules => ['OwnerMode', 'n', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
    order => 10,
  }
  
  aide::rule { 'LinkedLog':
    rules => ['OwnerMode', 'S', 'acl', 'xattrs', 'e2fsattrs', 'selinux'],
    order => 10,
  }
  
  aide::rule { 'SerMemberLog':
    rules => ['Full', 'I'],
    order => 10,
  }
  
  #############################################################################
  #####################  ADDING EVEN MORE COMPLEX TYPES  ######################
  #############################################################################
  
  aide::rule { 'Full':
    rules => ['InodeData', 'StaticFile'],
    order => 15,
  }
  
  aide::rule { 'VarTime':
    rules => ['InodeData', 'Checksums'],
    order => 15,
  }
  
  aide::rule { 'VarDirTime':
    rules => ['InodeData'],
    order => 15,
  }
  
  aide::rule { 'LoSerMemberLog':
    rules => ['SerMemberLog', 'ANF'],
    order => 15,
  }
  
  aide::rule { 'HiSerMemberLog':
    rules => ['SerMemberLog', 'ARF'],
    order => 15,
  }
  
  aide::rule { 'LowDELog':
    rules => ['SerMemberLog', 'ANF', 'ARF'],
    order => 15,
  }
  
  aide::rule { 'SerMemberDELog':
    rules => ['Full', 'ANF'],
    order => 15,
  }
}
