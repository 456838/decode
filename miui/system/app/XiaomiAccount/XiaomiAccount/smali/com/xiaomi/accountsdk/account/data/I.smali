.class public Lcom/xiaomi/accountsdk/account/data/I;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final UB:Ljava/lang/String;

.field public final UC:Ljava/lang/String;

.field public final UD:Ljava/lang/String;

.field public final UE:Ljava/lang/String;

.field public final password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/M;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/M;->ZJ(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/I;->UD:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/M;->ZK(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/I;->password:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/M;->ZH(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/I;->UB:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/M;->ZI(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/I;->UC:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/M;->ZL(Lcom/xiaomi/accountsdk/account/data/M;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/I;->UE:Ljava/lang/String;

    return-void
.end method
