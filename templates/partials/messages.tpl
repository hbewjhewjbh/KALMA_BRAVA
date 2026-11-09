{* Ejemplo de manejo de mensajes con Smarty *}
{if isset($flash)}
    <div class="alert">
        {$flash}
    </div>
{/if}
