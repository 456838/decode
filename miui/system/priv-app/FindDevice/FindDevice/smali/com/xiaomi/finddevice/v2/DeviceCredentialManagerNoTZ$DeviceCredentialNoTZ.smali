.class public Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
.super Lcom/xiaomi/finddevice/v2/AbsDeviceCrendential;
.source "DeviceCredentialManagerNoTZ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCredentialNoTZ"
.end annotation


# instance fields
.field private final mFid:Ljava/lang/String;

.field private final mFpriv:Ljava/security/PrivateKey;

.field private final mHost:Ljava/lang/String;

.field private final mOwnUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fpriv"    # Ljava/security/PrivateKey;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/AbsDeviceCrendential;-><init>()V

    .line 236
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A null or empty argument supplied. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mFpriv:Ljava/security/PrivateKey;

    .line 240
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mFid:Ljava/lang/String;

    .line 241
    iput-object p3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mHost:Ljava/lang/String;

    .line 242
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mOwnUserId:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fpriv"    # Ljava/security/PrivateKey;
    .param p2, "fid"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "ownUserId"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/AbsDeviceCrendential;-><init>()V

    .line 225
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 225
    if-nez v0, :cond_0

    .line 226
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 225
    if-eqz v0, :cond_1

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A null or empty argument supplied. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mFpriv:Ljava/security/PrivateKey;

    .line 230
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mFid:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mHost:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mOwnUserId:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    .locals 8
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "fpriv":Ljava/security/PrivateKey;
    const-string/jumbo v4, "fpriv"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    const-string/jumbo v4, "fpriv"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    const-string/jumbo v5, "EC"

    .line 204
    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/common/util/KeyTool;->hexToPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 208
    .end local v1    # "fpriv":Ljava/security/PrivateKey;
    :cond_0
    const-string/jumbo v4, "fid"

    invoke-virtual {p0, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "fid":Ljava/lang/String;
    const-string/jumbo v4, "host"

    invoke-virtual {p0, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "host":Ljava/lang/String;
    const-string/jumbo v4, "ownUserId"

    invoke-virtual {p0, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "ownUserId":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Bad credential JSON. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 214
    return-object v7

    .line 218
    :cond_2
    if-nez v3, :cond_3

    .line 219
    new-instance v4, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    invoke-direct {v4, v1, v0, v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 221
    :cond_3
    new-instance v4, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public getFId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mFid:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mOwnUserId:Ljava/lang/String;

    return-object v0
.end method

.method public sign([B)[B
    .locals 8
    .param p1, "src"    # [B

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    const/4 v3, 0x0

    .line 160
    .local v3, "signature":Ljava/security/Signature;
    :try_start_0
    const-string/jumbo v4, "sha256withECDSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 161
    .local v3, "signature":Ljava/security/Signature;
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mFpriv:Ljava/security/PrivateKey;

    invoke-virtual {v3, v4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 162
    invoke-virtual {v3, p1}, Ljava/security/Signature;->update([B)V

    .line 163
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 168
    .end local v3    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Sign failed. "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 172
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :goto_0
    new-array v4, v6, [B

    return-object v4

    .line 166
    :catch_1
    move-exception v2

    .line 167
    .local v2, "e":Ljava/security/SignatureException;
    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Sign failed. "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v2    # "e":Ljava/security/SignatureException;
    :catch_2
    move-exception v1

    .line 165
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Sign failed. "

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "fpriv"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mFpriv:Ljava/security/PrivateKey;

    invoke-static {v3}, Lcom/xiaomi/finddevice/common/util/KeyTool;->privateKeyToHex(Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string/jumbo v2, "fid"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mFid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string/jumbo v2, "host"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string/jumbo v2, "ownUserId"

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->mOwnUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Should not happen. "

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
