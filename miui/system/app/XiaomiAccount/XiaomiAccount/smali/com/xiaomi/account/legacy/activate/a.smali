.class public Lcom/xiaomi/account/legacy/activate/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static kZ(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "pref_sim_id"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->li(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "pref_phone"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->li(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "pref_activated_dev_id"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->li(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "pref_activated_sim_id"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->li(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "pref_sim_uid"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->li(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "pref_sim_pass_token"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->li(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "pref_sim_psecurity"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->li(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "ActivateOldInfoReader"

    const-string/jumbo v1, "Cleared activate info v1"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static la(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "pref_activate_info"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->li(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "ActivateOldInfoReader"

    const-string/jumbo v1, "Cleared activate info v2"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static lb(Landroid/content/Context;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/account/legacy/activate/b;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    const-string/jumbo v0, "pref_sim_id"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->lh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_phone"

    invoke-static {p0, v1}, Lcom/xiaomi/account/legacy/activate/d;->lh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_sim_uid"

    invoke-static {p0, v2}, Lcom/xiaomi/account/legacy/activate/d;->lh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pref_sim_pass_token"

    invoke-static {p0, v3}, Lcom/xiaomi/account/legacy/activate/d;->lh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "ActivateOldInfoReader"

    const-string/jumbo v1, "V1 activation info incomplete, bail."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string/jumbo v4, "ActivateOldInfoReader"

    const-string/jumbo v5, "V1 activation info found."

    invoke-static {v4, v5}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/xiaomi/account/legacy/activate/b;

    invoke-direct {v4}, Lcom/xiaomi/account/legacy/activate/b;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/h;->ahG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaomi/account/legacy/activate/b;->kf:Ljava/lang/String;

    iput-object v1, v4, Lcom/xiaomi/account/legacy/activate/b;->kg:Ljava/lang/String;

    iput-object v2, v4, Lcom/xiaomi/account/legacy/activate/b;->kh:Ljava/lang/String;

    iput-object v3, v4, Lcom/xiaomi/account/legacy/activate/b;->ki:Ljava/lang/String;

    iput-boolean v6, v4, Lcom/xiaomi/account/legacy/activate/b;->kj:Z

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ActivateOldInfoReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Integrated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " V1 activate info entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static lc(Landroid/content/Context;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/account/legacy/activate/b;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "pref_activate_info"

    invoke-static {p0, v0}, Lcom/xiaomi/account/legacy/activate/d;->lh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ActivateOldInfoReader"

    const-string/jumbo v2, "Found no V2 activate info, bail."

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "activate_info"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string/jumbo v0, "ActivateOldInfoReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " V2 activate info entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-ge v0, v3, :cond_4

    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/account/legacy/activate/b;

    invoke-direct {v4}, Lcom/xiaomi/account/legacy/activate/b;-><init>()V

    const-string/jumbo v5, "sim_serial"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v6, "ActivateOldInfoReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "V2 activate info entry "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " has no simId. Skip."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v5}, Lcom/xiaomi/accountsdk/utils/h;->ahG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/account/legacy/activate/b;->kf:Ljava/lang/String;

    const-string/jumbo v5, "phone"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/account/legacy/activate/b;->kg:Ljava/lang/String;

    const-string/jumbo v5, "sim_user_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/account/legacy/activate/b;->kh:Ljava/lang/String;

    const-string/jumbo v5, "sim_pass_token"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/xiaomi/account/legacy/activate/b;->ki:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/xiaomi/account/legacy/activate/b;->kj:Z

    iget-object v3, v4, Lcom/xiaomi/account/legacy/activate/b;->kg:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/xiaomi/account/legacy/activate/b;->kh:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    const-string/jumbo v3, "ActivateOldInfoReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "V2 activate info entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is incomplete. Skip."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v3, v4, Lcom/xiaomi/account/legacy/activate/b;->ki:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v3, "ActivateOldInfoReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to parse v2 activate info entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "ActivateOldInfoReader"

    const-string/jumbo v3, "failed to parse activate info"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_4
    :try_start_3
    const-string/jumbo v0, "ActivateOldInfoReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Integrated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " V2 activate info entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x1

    return v0
.end method
