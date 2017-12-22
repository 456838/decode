.class public Lcom/xiaomi/passport/task/a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic Bp:[I


# instance fields
.field private final Bm:Landroid/app/Activity;

.field private final Bn:Lcom/xiaomi/passport/task/c;

.field private Bo:Lcom/xiaomi/passport/ui/C;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/xiaomi/passport/task/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/task/a;->Bm:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/passport/task/a;->Bn:Lcom/xiaomi/passport/task/c;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/xiaomi/passport/task/c;Lcom/xiaomi/passport/task/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/task/a;-><init>(Landroid/app/Activity;Lcom/xiaomi/passport/task/c;)V

    return-void
.end method

.method private Gn(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input len error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bu:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->name()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p2}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Gs(Ljava/lang/String;)Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/task/a;->Gq()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-char v6, v4, v2

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_0
    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "0123456789"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v3, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_2
    if-ge v1, p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic Gq()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/task/a;->Bp:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/task/a;->Bp:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->values()[Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bt:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    invoke-virtual {v1}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bu:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    invoke-virtual {v1}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bv:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    invoke-virtual {v1}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/xiaomi/passport/task/a;->Bp:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected varargs Gm([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/b;->aax()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bu:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/passport/task/a;->Gn(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/task/a;->Go(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->Bu:Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/AutoGeneratePwdTask$PwdMode;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/passport/task/a;->Gn(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AutoGeneratePwdTask"

    const-string/jumbo v2, "invalid response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AutoGeneratePwdTask"

    const-string/jumbo v2, "network error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "AutoGeneratePwdTask"

    const-string/jumbo v2, "auth error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "AutoGeneratePwdTask"

    const-string/jumbo v2, "access denied"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public Go(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "^[A-Za-z]+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected Gp(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bo:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bo:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bo:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bm:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bo:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bm:Landroid/app/Activity;

    const v1, 0x7f0c002e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bn:Lcom/xiaomi/passport/task/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bn:Lcom/xiaomi/passport/task/c;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/task/c;->yy(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/task/a;->Gm([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/task/a;->Gp(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/task/a;->Bm:Landroid/app/Activity;

    const v2, 0x7f0c0074

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/task/a;->Bo:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bo:Lcom/xiaomi/passport/ui/C;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->setCancelable(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/task/a;->Bo:Lcom/xiaomi/passport/ui/C;

    iget-object v1, p0, Lcom/xiaomi/passport/task/a;->Bm:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "auto generating pwd"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
