.class final Lcom/xiaomi/account/task/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic kc:Lcom/xiaomi/account/task/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/task/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/task/A;->kc:Lcom/xiaomi/account/task/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/task/A;->kc:Lcom/xiaomi/account/task/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/h;->cancel(Z)Z

    return-void
.end method
