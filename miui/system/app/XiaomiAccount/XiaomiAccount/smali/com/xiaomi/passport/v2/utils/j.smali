.class final Lcom/xiaomi/passport/v2/utils/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/phonenum/b;


# instance fields
.field final synthetic Gw:Lcom/xiaomi/passport/v2/utils/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/j;->Gw:Lcom/xiaomi/passport/v2/utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public LG(Lcom/xiaomi/phonenum/bean/Error;)V
    .locals 3

    const-string/jumbo v0, "ActivatorPhoneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
