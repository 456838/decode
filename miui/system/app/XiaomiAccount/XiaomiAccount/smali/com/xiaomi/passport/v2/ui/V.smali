.class final Lcom/xiaomi/passport/v2/ui/V;
.super Lcom/xiaomi/passport/uicontroller/l;
.source ""


# instance fields
.field final synthetic Fh:Lcom/xiaomi/passport/v2/ui/U;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/U;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/V;->Fh:Lcom/xiaomi/passport/v2/ui/U;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected ir(Lcom/xiaomi/passport/uicontroller/g;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/V;->Fh:Lcom/xiaomi/passport/v2/ui/U;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JA(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;I)V

    return-void
.end method
