.class public Lcom/xiaomi/phonenum/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final afm:Z

.field public static final afn:Ljava/lang/String;

.field public static final afo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/xiaomi_account_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/phonenum/e;->afm:Z

    sget-boolean v0, Lcom/xiaomi/phonenum/e;->afm:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://act.account.xiaomi.com/pass/activator"

    :goto_0
    sput-object v0, Lcom/xiaomi/phonenum/e;->afn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/phonenum/e;->afn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/getCloudControl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/phonenum/e;->afo:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "http://act.preview.account.xiaomi.com/pass/activator"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
