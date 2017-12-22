.class public Lcom/xiaomi/accountsdk/account/data/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Pf:Ljava/lang/String;

.field private Pg:Ljava/lang/String;

.field private final Ph:Ljava/lang/String;

.field private Pi:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/a;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/a;->Pf:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/a;->Ph:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/a;->Pi:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/data/a;->Pg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public UU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/a;->Pf:Ljava/lang/String;

    return-object v0
.end method

.method public UV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/a;->Pg:Ljava/lang/String;

    return-object v0
.end method

.method public UW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/a;->Ph:Ljava/lang/String;

    return-object v0
.end method

.method public UX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/a;->Pi:Ljava/lang/String;

    return-object v0
.end method

.method public UY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/a;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public UZ(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/a;->Pg:Ljava/lang/String;

    return-void
.end method

.method public Va(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/a;->Pi:Ljava/lang/String;

    return-void
.end method
