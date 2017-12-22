.class public Lcom/xiaomi/accountsdk/account/data/B;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final TV:Ljava/lang/String;

.field public final TW:Ljava/lang/String;

.field public final TX:Ljava/lang/String;

.field public final TY:Ljava/lang/String;

.field public final TZ:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/C;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/C;->Za(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/B;->TX:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/C;->YZ(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/B;->TW:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/C;->Zc(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/B;->TZ:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/C;->YY(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/B;->TV:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/C;->Zb(Lcom/xiaomi/accountsdk/account/data/C;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/B;->TY:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/C;Lcom/xiaomi/accountsdk/account/data/B;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/B;-><init>(Lcom/xiaomi/accountsdk/account/data/C;)V

    return-void
.end method
