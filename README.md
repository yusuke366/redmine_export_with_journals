Redmine Export with Journals Plugin (Vertical Layout)
========================================
A redmine plugin to export issues CSV with history.
This is a fork of [this repository](https://github.com/shouta-dev/redmine_export_with_journals.git)

The upstream's layout of csv is horizontal.So if many journals is included, csv file is get to be wider.
This fork's layout of csv is vertical.

Example
--------------------

### upstream

```
1,aaaa,bbb,ccc,ddd,journal1,journal2,journal3
2,AAAA,BBB,CCC,DDD
```

# this fork

```
1,aaaa,bbb,ccc,ddd,journal1
"","","","","",journal2
"","","","","",journal3
2,AAAA,BBB,CCC,DDD
```


Requirements
---------------------
* Redmine 2.3.x

Installation
---------------------

1. $ cd REDMINE_ROOT/plugins
2. $ git clone https://github.com/suer/redmine_export_with_journals.git
3. $ git checkout horizontal
3. restart redmine
