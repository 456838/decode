.class public Lcom/xiaomi/passport/data/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private yG(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "empty configureId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static yI()Lcom/xiaomi/passport/data/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/data/b;->vn:Lcom/xiaomi/passport/data/a;

    return-object v0
.end method


# virtual methods
.method public yH(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/data/a;->yG(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/m;->ahQ(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/a;->yJ()Lcom/xiaomi/passport/utils/l;

    move-result-object v1

    const-string/jumbo v2, "%s_display_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->value:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/xiaomi/passport/utils/l;->DK(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public yJ()Lcom/xiaomi/passport/utils/l;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/data/b;->vo:Lcom/xiaomi/passport/utils/l;

    return-object v0
.end method

.method public yK(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)Ljava/lang/String;
    .locals 6

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/data/a;->yG(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/m;->ahQ(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/a;->yJ()Lcom/xiaomi/passport/utils/l;

    move-result-object v1

    const-string/jumbo v2, "%s_text_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->value:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/utils/l;->DJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yL(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)I
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/data/a;->yG(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/m;->ahQ(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/a;->yJ()Lcom/xiaomi/passport/utils/l;

    move-result-object v1

    const-string/jumbo v2, "%s_version_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->value:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/xiaomi/passport/utils/l;->DL(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public yM(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;ZLjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/data/a;->yG(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/a;->yJ()Lcom/xiaomi/passport/utils/l;

    move-result-object v0

    const-string/jumbo v1, "%s_display_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->value:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/passport/utils/l;->DG(Ljava/lang/String;Z)V

    return-void
.end method

.method public yN(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/data/a;->yG(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/a;->yJ()Lcom/xiaomi/passport/utils/l;

    move-result-object v0

    const-string/jumbo v1, "%s_text_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->value:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/passport/utils/l;->DH(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public yO(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/data/a;->yG(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/a;->yJ()Lcom/xiaomi/passport/utils/l;

    move-result-object v0

    const-string/jumbo v1, "%s_version_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->value:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/passport/utils/l;->DI(Ljava/lang/String;I)V

    return-void
.end method
