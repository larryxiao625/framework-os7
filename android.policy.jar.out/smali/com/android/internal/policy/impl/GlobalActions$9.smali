.class Lcom/android/internal/policy/impl/GlobalActions$9;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->initDialog(Landroid/view/LayoutInflater;Landroid/view/View;)V
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
    .line 1425
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$9;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->btnDisappear()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 1429
    return-void
.end method
