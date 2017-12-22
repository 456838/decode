.class public Lcom/xiaomi/accountsdk/account/data/x;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private TJ:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private TK:Ljava/lang/String;

.field private TL:Ljava/lang/String;

.field private TM:Ljava/lang/String;

.field private TN:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public YA(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/x;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/x;->TJ:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object p0
.end method

.method public YB(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/x;->TK:Ljava/lang/String;

    return-object p0
.end method

.method public YC(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/x;->TL:Ljava/lang/String;

    return-object p0
.end method

.method public YD(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/x;->TM:Ljava/lang/String;

    return-object p0
.end method

.method public YE(Z)Lcom/xiaomi/accountsdk/account/data/x;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/x;->TN:Z

    return-object p0
.end method

.method public YF(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/x;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/x;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;
    .locals 8

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/x;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/x;->TL:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/x;->TK:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/x;->TM:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/x;->TJ:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-boolean v6, p0, Lcom/xiaomi/accountsdk/account/data/x;->TN:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;ZLcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V

    return-object v0
.end method
