.class public Lcom/xiaomi/passport/utils/y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ga()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/xiaomi/passport/utils/y;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/y;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/y;->Gb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private delegate()Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acG()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public FZ()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/passport/utils/y;->delegate()Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;->add()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Gb()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/passport/utils/y;->delegate()Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;->ade()Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/hasheddeviceidlib/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/IllegalDeviceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public Gc()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/passport/utils/y;->delegate()Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;->adi()Z

    move-result v0

    return v0
.end method
