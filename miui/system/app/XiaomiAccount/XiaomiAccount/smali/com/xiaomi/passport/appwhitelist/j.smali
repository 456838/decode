.class public Lcom/xiaomi/passport/appwhitelist/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile KP:Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method On()Landroid/content/pm/Signature;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/j;->KP:Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/j;->KP:Landroid/content/pm/Signature;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/appwhitelist/l;->Os()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/xiaomi/passport/appwhitelist/l;->Os()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/appwhitelist/j;->Oo(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/j;->KP:Landroid/content/pm/Signature;

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/j;->KP:Landroid/content/pm/Signature;

    return-object v0
.end method

.method Oo(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/xiaomi/passport/appwhitelist/l;->Os()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/passport/appwhitelist/l;->Os()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v2
.end method

.method Op(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/a/a;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/appwhitelist/j;->Oo(Ljava/lang/String;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/E;->aja(Ljava/io/InputStream;)V

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    invoke-static {v3}, Lcom/xiaomi/accountsdk/utils/h;->ahB([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/xiaomi/accountsdk/utils/h;->ahC([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/passport/appwhitelist/a/e;

    invoke-direct {v4}, Lcom/xiaomi/passport/appwhitelist/a/e;-><init>()V

    invoke-virtual {v4, v3}, Lcom/xiaomi/passport/appwhitelist/a/e;->NN(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/a/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/passport/appwhitelist/a/e;->NO(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/a/e;->build()Lcom/xiaomi/passport/appwhitelist/a/a;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/E;->aja(Ljava/io/InputStream;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/E;->aja(Ljava/io/InputStream;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/E;->aja(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public Oq(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/appwhitelist/j;->On()Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/appwhitelist/j;->Oo(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
