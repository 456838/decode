.class public Lcom/xiaomi/account/data/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private kC:Ljava/lang/String;

.field private kD:Ljava/lang/String;

.field private kE:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/data/b;->mUserId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/account/data/b;->kE:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/data/b;->kD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/b;->kC:Ljava/lang/String;

    return-object v0
.end method

.method public lF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/b;->kD:Ljava/lang/String;

    return-object v0
.end method

.method public lG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/b;->kE:Ljava/lang/String;

    return-object v0
.end method

.method public lH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/data/b;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public lI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/data/b;->kC:Ljava/lang/String;

    return-void
.end method
