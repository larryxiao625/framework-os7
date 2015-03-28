.class Lcom/android/internal/policy/impl/GlobalActions$8;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1117
    :goto_0
    return-void

    .line 1107
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->btnDisappear()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)V

    goto :goto_0

    .line 1110
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1600(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 1111
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1114
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)V

    goto :goto_0

    .line 1102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
