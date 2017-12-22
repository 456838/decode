.class final Lcom/xiaomi/passport/ui/bc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic vm:Lcom/xiaomi/passport/ui/E;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/E;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/bc;->vm:Lcom/xiaomi/passport/ui/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/bc;->vm:Lcom/xiaomi/passport/ui/E;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/E;->cancel(Z)Z

    return-void
.end method
