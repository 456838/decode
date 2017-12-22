.class public Lcom/xiaomi/passport/task/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Cs:Ljava/lang/String;

.field private Ct:Lcom/xiaomi/passport/task/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Hu(Ljava/lang/String;)Lcom/xiaomi/passport/task/n;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/c;->VQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/n;->Cs:Ljava/lang/String;

    return-object p0
.end method

.method public Hv(Lcom/xiaomi/passport/task/o;)Lcom/xiaomi/passport/task/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/n;->Ct:Lcom/xiaomi/passport/task/o;

    return-object p0
.end method

.method public Hw(Ljava/lang/String;)Lcom/xiaomi/passport/task/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/n;->Cs:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/passport/task/m;
    .locals 4

    new-instance v0, Lcom/xiaomi/passport/task/m;

    iget-object v1, p0, Lcom/xiaomi/passport/task/n;->Cs:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/task/n;->Ct:Lcom/xiaomi/passport/task/o;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/task/m;-><init>(Ljava/lang/String;Lcom/xiaomi/passport/task/o;Lcom/xiaomi/passport/task/m;)V

    return-object v0
.end method
