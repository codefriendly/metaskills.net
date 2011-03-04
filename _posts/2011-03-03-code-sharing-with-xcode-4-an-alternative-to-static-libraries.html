---
layout: post
title: Code Sharing With XCode 4 - An Alternative To Static Libraries
categories: 
  - apple-os
---

<p>
  There are many great techniques for sharing code across XCode projects. If that code is tested and build-able by XCode as a static library, Clint Harris' <em><a href="http://www.clintharris.net/2009/iphone-app-shared-libraries/">Easy, Modular Code Sharing Across iPhone Apps: Static Libraries and Cross-Project References</a></em> is really a solid source on the topic. However, this approach is a bit heavy handed for what I wanted to do. Basically if you just have some common header and implementation files that you want to use across multiple XCode projects, this article is for you. The goals for the common code is simple:
</p>

<ul>
  <li>Common code needs to be under distinct version control.</li>
  <li>Common code files need to be editable by XCode from the referencing project.</li>  
</ul>

<p>
  In this example I will use a contrived example folder called "MetaSupport" as simple directory of common code to use. It includes some global function, a MyApp namespace with class with accessors and a directory of Additions to core classes.
</p>

<pre class="command">
$ tree MetaSupport
├── Additions
│   ├── NSArray+MetaSupport.h
│   └── NSArray+MetaSupport.m
├── MyApp.h
├── MyApp.m
├── MyGlobal.h
└── MyGlobal.m  
</pre>

<p>
  So let's get started. Below are the steps for adding shared code to our "KillerApp" iOS project. FIrst, right click on the XCode project in your project navigator. Select "New Group".
  <aside class="center">
    <span class="photofancy">
      <img src="/assets/xcs_addgroup.png" alt="XCode 4 Add New Group" width="367" height="421" />
    </span>
  </aside>
</p>

<p>
  Select the newly created group in your project navigator. Now open up the file inspector. It can be found in View => Utilities => File Inspector. In the file inspector, set the "Group Name" to match your shared code folder. In this case I named it "MetaSupport". This is purely optional and simply helps you organize your code.
  <aside class="center">
    <span class="photofancy">
      <img src="/assets/xcs_addedgroup.png" alt="XCode 4 Added New Group" width="367" height="421" />
    </span>
  </aside>
</p>

<p>
  Drag all your shared files and folders from your "MetaSupport" directory to the newly created "MetaSupport" group folder. XCode will ask you to choose some options for adding these files. It is important to add folder references and not copy files. Check any targets that apply.
  <aside class="center">
    <span class="photofancy">
      <img src="/assets/xcs_addfiles.png" alt="XCode 4 Added New Files" width="730" height="493" />
    </span>
  </aside>
</p>

<p>
  So not only can you see and edit the files belonging to your shared code. You can also commit changes to those files and they will be committed to the shared code's repository that they reside in, not the current KillerApp projects repo! Hence you can update your shared code for all projects from any project.
  <aside class="center">
    <span class="photofancy">
      <img src="/assets/xcs_commitfiles.png" alt="XCode 4 Commit Files" width="756" height="457" />
    </span>
  </aside>
</p>



