.class public abstract Lcom/xiaomi/accountsdk/account/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Vk:Lcom/xiaomi/accountsdk/account/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Lcom/xiaomi/accountsdk/account/a/b;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/a/a;->Vk:Lcom/xiaomi/accountsdk/account/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aah()Lcom/xiaomi/accountsdk/account/a/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/a/a;->Vk:Lcom/xiaomi/accountsdk/account/a/a;

    return-object v0
.end method

.method public static aai(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "http://dummyurl/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string/jumbo v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static aaj(Lcom/xiaomi/accountsdk/account/a/a;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/account/a/a;->Vk:Lcom/xiaomi/accountsdk/account/a/a;

    return-void
.end method


# virtual methods
.method public abstract sA(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract sB()V
.end method

.method public abstract sC(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract sx(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sz(Ljava/lang/String;J)V
.end method
