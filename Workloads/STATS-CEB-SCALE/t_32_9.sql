SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 50.0
AND u.Reputation >= 724
AND u.Views >= 55
AND u.Views <= 284
AND u.UpVotes = 224
AND v.CreationDate >= 955
AND v.CreationDate <= 1477
AND u.CreationDate >= 375
AND u.CreationDate <= 1525

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;