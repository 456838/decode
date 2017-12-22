.class final Lcom/xiaomi/passport/v2/ui/P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ES:Lcom/xiaomi/passport/v2/ui/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/P;->ES:Lcom/xiaomi/passport/v2/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/P;->ES:Lcom/xiaomi/passport/v2/ui/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->Iv(Z)V

    return-void
.end method
