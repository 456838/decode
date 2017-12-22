.class public Lcom/xiaomi/accountsdk/utils/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ahq(Z)Z
    .locals 1

    const-string/jumbo v0, "IS_ALPHA_BUILD"

    invoke-static {v0, p0}, Lcom/xiaomi/accountsdk/utils/g;->ahv(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static ahr(Z)Z
    .locals 1

    const-string/jumbo v0, "IS_DEVELOPMENT_VERSION"

    invoke-static {v0, p0}, Lcom/xiaomi/accountsdk/utils/g;->ahv(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ahs(Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/g;->ahr(Z)Z

    move-result v1

    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/g;->ahq(Z)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static aht(Z)Z
    .locals 1

    const-string/jumbo v0, "IS_STABLE_VERSION"

    invoke-static {v0, p0}, Lcom/xiaomi/accountsdk/utils/g;->ahv(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ahu()Z
    .locals 2

    const-string/jumbo v0, "IS_TABLET"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/g;->ahv(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static ahv(Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    const-string/jumbo v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    return p1

    :catch_1
    move-exception v0

    return p1

    :catch_2
    move-exception v0

    return p1
.end method
