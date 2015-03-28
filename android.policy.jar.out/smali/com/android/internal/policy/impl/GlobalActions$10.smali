.class Lcom/android/internal/policy/impl/GlobalActions$10;
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
    .line 1432
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    const/4 v2, 0x2

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->click(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$2700(Lcom/android/internal/policy/impl/GlobalActions;Landroid/view/View;I)V

    .line 1436
    return-void
.end method
