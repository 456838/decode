.class public Lcom/loc/bO;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bO;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bO;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bO;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bO;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/bO;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/loc/bO;->b:Ljava/lang/String;

    return-void
.end method

.method public static aEP(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/loc/bO;->aEU(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/loc/bO;->d:Ljava/lang/String;

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static aEQ(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/bO;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/loc/bO;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget-object v0, Lcom/loc/bO;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/loc/bO;->a:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getApplicationName"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getApplicationName"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static aER(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/loc/bO;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bO;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/loc/bO;->b:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/bO;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/bO;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getPackageName"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static aES(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v0, ""

    sget-object v1, Lcom/loc/bO;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/loc/bO;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget-object v0, Lcom/loc/bO;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/loc/bO;->c:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getApplicationVersion"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getApplicationVersion"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static aET(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/loc/bO;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    const-string/jumbo v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_2

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bO;->e:Ljava/lang/String;

    sget-object v0, Lcom/loc/bO;->e:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string/jumbo v1, ""

    sget-object v2, Lcom/loc/bO;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/loc/bO;->e:Ljava/lang/String;

    return-object v0

    :cond_2
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getSHA1AndPackage"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v0, Lcom/loc/bO;->e:Ljava/lang/String;

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getSHA1AndPackage"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getSHA1AndPackage"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static aEU(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/loc/bO;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.amap.api.v2.apikey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bO;->d:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/loc/bO;->d:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Lcom/loc/bO;->d:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/loc/bO;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static aEV(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/loc/bO;->aEU(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getKey"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/loc/bO;->d:Ljava/lang/String;

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getKey"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/loc/bO;->e:Ljava/lang/String;

    return-void
.end method

.method static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/loc/bO;->d:Ljava/lang/String;

    return-void
.end method
