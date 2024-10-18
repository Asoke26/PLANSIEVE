SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 50.0
AND u.Reputation >= 1223
AND u.Views >= 34
AND u.Views <= 378
AND u.UpVotes = 456
AND v.CreationDate >= 751
AND v.CreationDate <= 805
AND u.CreationDate >= 66
AND u.CreationDate <= 666

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;