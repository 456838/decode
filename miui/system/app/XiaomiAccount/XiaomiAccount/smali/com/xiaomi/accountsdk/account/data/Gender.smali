.class public final enum Lcom/xiaomi/accountsdk/account/data/Gender;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Pq:Lcom/xiaomi/accountsdk/account/data/Gender;

.field public static final enum Pr:Lcom/xiaomi/accountsdk/account/data/Gender;

.field private static final synthetic Ps:[Lcom/xiaomi/accountsdk/account/data/Gender;


# instance fields
.field private mGender:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Gender;

    const-string/jumbo v1, "MALE"

    const-string/jumbo v2, "m"

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/accountsdk/account/data/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Gender;->Pr:Lcom/xiaomi/accountsdk/account/data/Gender;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Gender;

    const-string/jumbo v1, "FEMALE"

    const-string/jumbo v2, "f"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/account/data/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Gender;->Pq:Lcom/xiaomi/accountsdk/account/data/Gender;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/Gender;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Gender;->Pr:Lcom/xiaomi/accountsdk/account/data/Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Gender;->Pq:Lcom/xiaomi/accountsdk/account/data/Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Gender;->Ps:[Lcom/xiaomi/accountsdk/account/data/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/Gender;->mGender:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Gender;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/data/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Gender;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/Gender;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Gender;->Ps:[Lcom/xiaomi/accountsdk/account/data/Gender;

    return-object v0
.end method


# virtual methods
.method public Vp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Gender;->mGender:Ljava/lang/String;

    return-object v0
.end method
