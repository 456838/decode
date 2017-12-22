.class final Lcom/xiaomi/account/ui/cc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic hw:Lcom/xiaomi/account/ui/ShowPushCodeDialogActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/ShowPushCodeDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/cc;->hw:Lcom/xiaomi/account/ui/ShowPushCodeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/cc;->hw:Lcom/xiaomi/account/ui/ShowPushCodeDialogActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/ShowPushCodeDialogActivity;->finish()V

    return-void
.end method
