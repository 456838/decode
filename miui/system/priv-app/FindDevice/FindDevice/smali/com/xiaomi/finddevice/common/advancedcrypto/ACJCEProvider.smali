.class public Lcom/xiaomi/finddevice/common/advancedcrypto/ACJCEProvider;
.super Ljava/security/Provider;
.source "ACJCEProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 9
    const-string/jumbo v0, "AC"

    const-string/jumbo v1, "Native Advanced Crypto"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 10
    const-string/jumbo v0, "KeyFactory.ACAsym"

    const-class v1, Lcom/xiaomi/finddevice/common/advancedcrypto/ACAsymKeyFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACJCEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string/jumbo v0, "KeyFactory.EC"

    const-class v1, Lcom/xiaomi/finddevice/common/advancedcrypto/ACECCKeyFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACJCEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v0, "KeyFactory.DSA"

    const-class v1, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSAKeyFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACJCEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string/jumbo v0, "Signature.sha256withECDSA"

    const-class v1, Lcom/xiaomi/finddevice/common/advancedcrypto/ACSha256withECDSASignature;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACJCEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string/jumbo v0, "Signature.DSA"

    const-class v1, Lcom/xiaomi/finddevice/common/advancedcrypto/ACDSASignature;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/common/advancedcrypto/ACJCEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
.end method
