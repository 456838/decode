.class public final enum Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NN:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

.field public static final enum NO:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

.field public static final enum NP:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

.field private static final synthetic NQ:[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;


# instance fields
.field public final serverValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NN:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    const-string/jumbo v1, "RECOVERABLE"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NP:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    const-string/jumbo v1, "FID"

    invoke-direct {v0, v1, v3, v5}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NO:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    new-array v0, v5, [Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NN:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NP:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NO:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NQ:[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->serverValue:I

    return-void
.end method

.method public static To(I)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;
    .locals 5

    invoke-static {}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->values()[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget v4, v3, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->serverValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NQ:[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    return-object v0
.end method
