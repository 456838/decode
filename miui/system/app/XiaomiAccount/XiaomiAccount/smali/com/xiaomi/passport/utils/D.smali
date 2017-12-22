.class final Lcom/xiaomi/passport/utils/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Be:Lcom/xiaomi/passport/utils/u;

.field final synthetic Bf:Lcom/xiaomi/passport/ui/C;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/utils/u;Lcom/xiaomi/passport/ui/C;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/D;->Be:Lcom/xiaomi/passport/utils/u;

    iput-object p2, p0, Lcom/xiaomi/passport/utils/D;->Bf:Lcom/xiaomi/passport/ui/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/utils/D;->Bf:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method
