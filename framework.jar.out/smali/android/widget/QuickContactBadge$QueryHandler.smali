.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 329
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 330
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 331
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 335
    const/4 v6, 0x0

    .line 336
    .local v6, lookupUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 337
    .local v2, createUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 338
    .local v7, trigger:Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2
    move-object v3, p2

    .line 340
    .local v3, extras:Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 371
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 372
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_1
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v8, v6}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 377
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v8}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 379
    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    .line 381
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v10, 0x3

    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v11, v11, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v8, v9, v6, v10, v11}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 395
    :cond_2
    :goto_2
    return-void

    .line 338
    .end local v3           #extras:Landroid/os/Bundle;
    .restart local p2
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 342
    .end local p2
    .restart local v3       #extras:Landroid/os/Bundle;
    :pswitch_0
    const/4 v7, 0x1

    .line 343
    :try_start_0
    const-string/jumbo v8, "tel"

    const-string/jumbo v9, "uri_content"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 347
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 348
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 349
    .local v0, contactId:J
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 351
    goto :goto_1

    .line 356
    .end local v0           #contactId:J
    .end local v5           #lookupKey:Ljava/lang/String;
    :pswitch_2
    const/4 v7, 0x1

    .line 357
    const-string v8, "mailto"

    const-string/jumbo v9, "uri_content"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 362
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 363
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 364
    .restart local v0       #contactId:J
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 365
    .restart local v5       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 371
    .end local v0           #contactId:J
    .end local v5           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz p3, :cond_4

    .line 372
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v8

    .line 383
    :cond_5
    if-eqz v2, :cond_2

    .line 386
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v4, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    .local v4, intent:Landroid/content/Intent;
    if-eqz v3, :cond_6

    .line 388
    const-string/jumbo v8, "uri_content"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 392
    :cond_6
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v8, v2}, Landroid/widget/QuickContactBadge$BaiduInjector;->showStrangeQuickContact(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V

    goto :goto_2

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
