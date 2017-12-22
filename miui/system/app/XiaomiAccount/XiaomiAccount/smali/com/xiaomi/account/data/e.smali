.class public abstract Lcom/xiaomi/account/data/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;
    .locals 1

    const-string/jumbo v0, "sina"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/data/f;

    invoke-direct {v0}, Lcom/xiaomi/account/data/f;-><init>()V

    return-object v0

    :cond_0
    const-string/jumbo v0, "qq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/account/data/g;

    invoke-direct {v0}, Lcom/xiaomi/account/data/g;-><init>()V

    return-object v0

    :cond_1
    const-string/jumbo v0, "facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xiaomi/account/data/h;

    invoke-direct {v0}, Lcom/xiaomi/account/data/h;-><init>()V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract lS()Ljava/lang/String;
.end method

.method public abstract lT()Ljava/lang/String;
.end method

.method public abstract lU()Ljava/lang/String;
.end method

.method public abstract lV()Ljava/lang/String;
.end method

.method public abstract lX()Ljava/lang/String;
.end method

.method public abstract lY()Ljava/lang/String;
.end method

.method public abstract lZ()I
.end method

.method public abstract ma()Ljava/lang/String;
.end method

.method public abstract mb()Ljava/lang/String;
.end method

.method public abstract mc()I
.end method

.method public abstract md()Ljava/lang/String;
.end method

.method public abstract me()I
.end method
