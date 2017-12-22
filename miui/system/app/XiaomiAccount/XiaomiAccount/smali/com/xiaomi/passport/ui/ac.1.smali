.class final Lcom/xiaomi/passport/ui/ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tP:Lcom/xiaomi/passport/ui/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ac;->tP:Lcom/xiaomi/passport/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string/jumbo v0, "email_reg_need_captcha"

    invoke-static {v0}, Lcom/xiaomi/passport/utils/w;->Fw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ac;->tP:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/k;->tG()V

    return-void
.end method
