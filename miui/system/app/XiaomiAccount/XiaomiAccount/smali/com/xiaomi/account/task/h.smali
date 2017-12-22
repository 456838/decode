.class public Lcom/xiaomi/account/task/h;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic iT:[I


# instance fields
.field private iL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private iM:Ljava/lang/String;

.field private iN:Ljava/lang/String;

.field private iO:Lcom/xiaomi/account/task/i;

.field private iP:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field private iQ:Ljava/lang/String;

.field private iR:Lcom/xiaomi/passport/ui/C;

.field private iS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/account/task/i;)V
    .locals 8

    const/4 v3, 0x0

    sget-object v5, Lcom/xiaomi/accountsdk/account/data/BindingType;->PU:Lcom/xiaomi/accountsdk/account/data/BindingType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/account/task/h;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;Ljava/lang/String;Lcom/xiaomi/account/task/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;Ljava/lang/String;Lcom/xiaomi/account/task/i;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/account/task/h;->iL:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/xiaomi/account/task/h;->iN:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/task/h;->iQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/account/task/h;->iM:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/account/task/h;->iP:Lcom/xiaomi/accountsdk/account/data/BindingType;

    iput-object p6, p0, Lcom/xiaomi/account/task/h;->iS:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/account/task/h;->iO:Lcom/xiaomi/account/task/i;

    return-void
.end method

.method private static synthetic jV()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/account/task/h;->iT:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/account/task/h;->iT:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/BindingType;->values()[Lcom/xiaomi/accountsdk/account/data/BindingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->PS:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/BindingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->PT:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/BindingType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->PU:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/BindingType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->PV:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/BindingType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->PW:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/BindingType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/xiaomi/account/task/h;->iT:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/h;->jT([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs jT([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iL:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v1, "invalid parameter"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iO:Lcom/xiaomi/account/task/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v2, "passportapi"

    invoke-static {v0, v2}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const/4 v2, 0x5

    move v8, v1

    move v1, v2

    :goto_0
    if-ge v8, v7, :cond_4

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/account/task/h;->jV()[I

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/task/h;->iP:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/BindingType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/account/task/h;->iM:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/task/h;->iP:Lcom/xiaomi/accountsdk/account/data/BindingType;

    iget-object v3, p0, Lcom/xiaomi/account/task/h;->iS:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/account/task/h;->iN:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/task/h;->iQ:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/b;->abG(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidBindAddressException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/DeleteSafeAddressException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/UserRestrictedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/account/task/h;->iM:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/task/h;->iN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/b;->aaw(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidBindAddressException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/DeleteSafeAddressException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/UserRestrictedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v2, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v3, "AuthenticationFailureException"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/account/task/h;->iL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v2, "UserRestrictedException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iP:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/BindingType;->Wd()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    :goto_4
    move v6, v0

    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_4

    :catch_3
    move-exception v0

    const-string/jumbo v1, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v2, "InvalidSafeAddressException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_4
    move-exception v0

    const-string/jumbo v1, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v2, "InvalidSafeAddressException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v6, 0x9

    goto :goto_2

    :catch_5
    move-exception v1

    const-string/jumbo v2, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v3, "InvalidVerifyCodeException"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x7

    goto :goto_3

    :catch_6
    move-exception v0

    const-string/jumbo v1, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v2, "CipherException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_7
    move-exception v0

    const-string/jumbo v1, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v2, "InvalidResponseException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_8
    move-exception v0

    const-string/jumbo v1, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v2, "AccessDeniedException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x4

    goto/16 :goto_2

    :cond_4
    move v6, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected jU(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iR:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    if-nez p1, :cond_0

    const-string/jumbo v0, "UpdateBindedPhoneOrEmai"

    const-string/jumbo v1, "result is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/data/d;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/account/task/h;->iO:Lcom/xiaomi/account/task/i;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaomi/account/task/i;->iC(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iO:Lcom/xiaomi/account/task/i;

    invoke-interface {v0}, Lcom/xiaomi/account/task/i;->iD()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/h;->jU(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v1, Lcom/xiaomi/passport/ui/D;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0c0129

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/h;->iR:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iR:Lcom/xiaomi/passport/ui/C;

    new-instance v1, Lcom/xiaomi/account/task/A;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/task/A;-><init>(Lcom/xiaomi/account/task/h;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->xE(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/xiaomi/account/task/h;->iR:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/account/task/h;->iL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "bindAddressProgress"

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
