.class public Lcom/xiaomi/passport/data/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final notificationUrl:Ljava/lang/String;

.field final password:Ljava/lang/String;

.field final username:Ljava/lang/String;

.field final vF:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

.field final vG:Ljava/lang/String;

.field final vH:I

.field final vI:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field final vJ:Ljava/lang/String;

.field final vK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;I)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/passport/data/d;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/data/d;->vF:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput p2, p0, Lcom/xiaomi/passport/data/d;->vH:I

    iput-object p3, p0, Lcom/xiaomi/passport/data/d;->vJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/data/d;->username:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/passport/data/d;->password:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/passport/data/d;->vG:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/passport/data/d;->vI:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object p8, p0, Lcom/xiaomi/passport/data/d;->vK:Ljava/lang/String;

    iput-object p9, p0, Lcom/xiaomi/passport/data/d;->notificationUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public yR()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/data/d;->vF:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    return-object v0
.end method

.method public yS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/data/d;->vG:Ljava/lang/String;

    return-object v0
.end method

.method public yT()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/data/d;->vH:I

    return v0
.end method

.method public yU()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/data/d;->vI:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object v0
.end method

.method public yV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/data/d;->notificationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public yW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/data/d;->vK:Ljava/lang/String;

    return-object v0
.end method
