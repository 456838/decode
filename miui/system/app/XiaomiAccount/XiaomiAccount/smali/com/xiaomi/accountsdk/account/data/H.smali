.class public Lcom/xiaomi/accountsdk/account/data/H;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final UA:Ljava/lang/String;

.field public final Uv:Ljava/lang/String;

.field public final Uw:Z

.field public final Ux:Ljava/lang/String;

.field public final Uy:Ljava/lang/String;

.field public final Uz:Z

.field public final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/U;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/U;->ZZ(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/H;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/U;->ZW(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/H;->Uy:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/U;->ZY(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/H;->UA:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/U;->ZV(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/H;->Ux:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/U;->ZT(Lcom/xiaomi/accountsdk/account/data/U;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/H;->Uv:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/U;->ZX(Lcom/xiaomi/accountsdk/account/data/U;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/H;->Uz:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/U;->ZU(Lcom/xiaomi/accountsdk/account/data/U;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/H;->Uw:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/U;Lcom/xiaomi/accountsdk/account/data/H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/H;-><init>(Lcom/xiaomi/accountsdk/account/data/U;)V

    return-void
.end method
