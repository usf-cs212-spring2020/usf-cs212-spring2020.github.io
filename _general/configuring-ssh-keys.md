---
layout: guides
navbar: Guides
title: Configuring SSH Keys
key: 2
---

You will be accessing your Github repositories and CS lab computers for this course frequently. It will save you a lot of time to setup your SSH keys to avoid having to enter a username and password each time.

<article class="message is-info">
  <div class="message-body">
    <i class="fas fa-info-circle"></i>&nbsp;SSH "passwordless login" uses public key authentication instead of passwords.
  </div>
</article>

{% include anchor.html level="h2" text="Video Walkthrough" %}

<p>This video walkthrough will illustrate this entire process on a Mac OSX system. Alternatively, you can follow the steps in the sections below.</p>

<div>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/PO66ooR9n1g?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen style="height: 315px;"></iframe>
  <br/>
  <small><a href="https://youtu.be/PO66ooR9n1g"><i class="fab fa-youtube"></i> https://youtu.be/PO66ooR9n1g</a></small>
</div>

{% include anchor.html level="h2" text="Authorize CS Labs on GitHub" %}

You should first authorize our CS lab computers to access your Github repositories.

<ol>
  <li>
    <p>Log into one of the CS lab computers using your CS account. See the "Using CS Lab Computers" guide for help if you are unsure how to do this step.</p>
  </li>

  <li>
    <p>Follow the Github <a href="https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/">Generating a New SSH Key</a> guide for Linux. Before you start:</p>

    <ul>
      <li>
        <p>When prompted for a passphrase for your key, you can press <kbd>Enter</kbd> without entering anything. It is more secure to enter a passphrase, but less convenient. See the <a href="https://help.github.com/articles/working-with-ssh-key-passphrases/">Working with SSH Key Passphrases</a> guide from Github for more information.</p>
      </li>

      <li>
        <p>Do <strong>NOT</strong> forget to complete the <a href="https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/">Add the SSH Key to Github</a> step at the very end!</p>
      </li>
    </ul>
  </li>

  <li>
    <p>Follow the Github <a href="https://help.github.com/articles/testing-your-ssh-connection/">Testing Your SSH Connection</a> guide from a CS lab computer to make sure everything is setup properly.</p>
  </li>
</ol>

At this point, you should be able to run the homework and project scripts from the CS lab computers.

{% include anchor.html level="h2" text="Authorize Your System on GitHub" %}

I recommend you follow the same process above on your own local laptop or computer system. The GitHub guides linked above have steps for Mac, Windows, and Linux systems.

Once you complete this process, you should be able to clone, pull, and push your Github repositories in Eclipse.

{% include anchor.html level="h2" text="Authorize Your System on CS Labs" %}

In a Terminal window on your system (Mac or Linux), change to the directory with your SSH keys. Make sure your public key is listed there. You *should* be able to use these commands:

<textarea class="textarea copy" rows="2">
cd ~/.ssh/
ls
</textarea>


Next, you need to let `stargate.cs.usfca.edu` know your public key is authorized. You do this by copying the contents of your public key to the `authorized_keys` file in the `.ssh` directory. You *should* be able to use these commands to do this in one step:

<textarea class="textarea copy" rows="1">
cat keyname.pub | ssh username@stargate.cs.usfca.edu "cat >> ~/.ssh/authorized_keys"
</textarea>

Replace `username` with your CS username and `keyname` with the name of your public key before copy/paste. This is usually `id_rsa.pub` but the exact name depends on how you generated your keys.

To test your setup, try to SSH into `stargate.cs.usfca.edu` without your password.

{% include anchor.html level="h2" text="Authorize Stargate on CS Labs" %}

The steps above will let you login to `stargate.cs.usfca.edu` remotely from your system, but then you need to login from `stargate` to a lab computer (like `g1201`) as well.

To start, SSH in to `stargate.cs.usfca.edu` and then SSH into any CS lab computer. If you are not asked for a password when you SSH into a CS lab computer, you can skip these steps.

On a CS lab computer, copy the contents of your `*.pub` key into the `authorized_keys` file on its own line. Since this is a copy between two local files, you *should* be able to use this command:

<textarea class="textarea copy" rows="2">
cd ~/.ssh/
cat keyname.pub >> authorized_keys
</textarea>

Replace `keyname` with the name of your public key before copy/paste.

Now, after you login to `stargate.cs.usfca.edu` without a password, you should be able to SSH into a lab computer without a password as well.
