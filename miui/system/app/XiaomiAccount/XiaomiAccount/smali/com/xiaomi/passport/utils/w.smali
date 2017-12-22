.class public Lcom/xiaomi/passport/utils/w;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FA(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "V3.0_login_failure"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static FB(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string/jumbo v0, "onSetupGuide"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "package_name"

    invoke-interface {p4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p4}, Lcom/xiaomi/accountsdk/account/a/a;->sy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Fs(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "isUpLinkPhoneRegister"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "V3.0_phone_reg"

    invoke-static {v1, p0, p2, p3, v0}, Lcom/xiaomi/passport/utils/w;->FB(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Ft(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "V3.0_verify_phone_failure"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Fu(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "activator_phone_num"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "selected_phone_index"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "source"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v1, "V3.0_activator_phone"

    invoke-static {v1, p0, p4, p5, v0}, Lcom/xiaomi/passport/utils/w;->FB(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Fv(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "V3.0_phone_ticket"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaomi/passport/utils/w;->FB(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Fw(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "V3.0_email_reg_failure"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Fx(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "V3.0_email_reg"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaomi/passport/utils/w;->FB(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Fy(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "V3.0_add_account"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaomi/passport/utils/w;->FB(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Fz(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "V3.0_password_login"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaomi/passport/utils/w;->FB(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method
