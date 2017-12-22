.class public Lcom/xiaomi/accountsdk/account/data/r;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final SD:Ljava/lang/String;

.field public final SE:Ljava/lang/String;

.field public final SF:Ljava/lang/String;

.field public final SG:Ljava/lang/String;

.field public final SH:Ljava/lang/String;

.field public final SI:Ljava/lang/String;

.field public final SJ:Ljava/lang/String;

.field public final SK:Ljava/lang/String;

.field public final SL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/s;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/s;->XX(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SD:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/s;->XT(Lcom/xiaomi/accountsdk/account/data/s;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QI:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SI:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QJ:Ljava/lang/String;

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/r;->SK:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/s;->XW(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SE:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/s;->XZ(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SJ:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/s;->XU(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SG:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/s;->XV(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SH:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/s;->XY(Lcom/xiaomi/accountsdk/account/data/s;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/r;->SF:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/s;Lcom/xiaomi/accountsdk/account/data/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/r;-><init>(Lcom/xiaomi/accountsdk/account/data/s;)V

    return-void
.end method

.method public static XM(Lcom/xiaomi/accountsdk/account/data/r;)Lcom/xiaomi/accountsdk/account/data/s;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/s;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/s;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/r;->SD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/s;->XN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/r;->SL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/s;->XQ(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/r;->SJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/s;->XS(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/r;->SE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/s;->XO(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/r;->SG:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/r;->SH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/s;->XP(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/r;->SF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/s;->XR(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    return-object v0
.end method
