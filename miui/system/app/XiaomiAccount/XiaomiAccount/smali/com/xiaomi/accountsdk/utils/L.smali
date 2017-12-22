.class public abstract Lcom/xiaomi/accountsdk/utils/L;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aae:Lcom/xiaomi/accountsdk/utils/L;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/utils/I;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/utils/I;-><init>(Lcom/xiaomi/accountsdk/utils/I;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/L;->aae:Lcom/xiaomi/accountsdk/utils/L;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajx()Lcom/xiaomi/accountsdk/utils/L;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/L;->aae:Lcom/xiaomi/accountsdk/utils/L;

    return-object v0
.end method


# virtual methods
.method public abstract ajl(Landroid/content/Context;)V
.end method
