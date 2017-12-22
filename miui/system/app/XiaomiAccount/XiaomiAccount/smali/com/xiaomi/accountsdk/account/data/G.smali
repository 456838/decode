.class public Lcom/xiaomi/accountsdk/account/data/G;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Us:Ljava/util/Calendar;

.field private Ut:Lcom/xiaomi/accountsdk/account/data/Gender;

.field private Uu:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/G;->mUserId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/G;->Uu:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/G;->Ut:Lcom/xiaomi/accountsdk/account/data/Gender;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/G;->Us:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public Zk()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/G;->Us:Ljava/util/Calendar;

    return-object v0
.end method

.method public Zl()Lcom/xiaomi/accountsdk/account/data/Gender;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/G;->Ut:Lcom/xiaomi/accountsdk/account/data/Gender;

    return-object v0
.end method

.method public Zm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/G;->Uu:Ljava/lang/String;

    return-object v0
.end method
