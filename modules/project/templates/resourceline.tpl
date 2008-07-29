{foreach from=$resourceplan item=line}
  <div style="margin-bottom: 5px; background-color: #e7ebef; position: relative; float: left; width: 100%; min-width: {$min_width}px;
    width: expression(document.body.clientWidth > ({$min_width}+30) ? '100%' : '{$min_width}px');">
    <div style="width: {$width}px; position: relative; float: left;  padding-left: {$padding}px;">
      {if $line.type != 'task'}
        <img src="images/plus.gif" id="img_fold_rp_{$line.id}" alt="unfold" onclick="toggle_tree('{$line.type}_{$line.id}', 'img_fold_rp_{$line.id}',{$line.employee}, {$depth}); return false;" />
        <img src="images/package.gif" alt="task" />
      {else}
         <img src="images/task.gif" alt="task" />
      {/if}
      {$line.name}
    </div>
      {foreach from=$line.data item=i name=prop}
        <div style="width: 50px; position: relative; float: left;">{$i}</div>
      {/foreach}
  </div>
  <div id="{$line.type}_{$line.id}" style="display:none;"></div>
{/foreach}