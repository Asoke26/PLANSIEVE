SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 300.0
AND u.Reputation >= 205
AND u.Views >= 18
AND u.Views <= 216
AND u.UpVotes = 40
AND v.CreationDate >= 321
AND v.CreationDate <= 1253
AND u.CreationDate >= 173
AND u.CreationDate <= 767

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;