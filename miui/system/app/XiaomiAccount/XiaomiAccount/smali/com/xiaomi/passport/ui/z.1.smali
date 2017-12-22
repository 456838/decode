.class abstract Lcom/xiaomi/passport/ui/z;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field final synthetic rD:Lcom/xiaomi/passport/ui/x;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/ui/x;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/z;->rD:Lcom/xiaomi/passport/ui/x;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public wL()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/z;->cancel()V

    return-void
.end method
