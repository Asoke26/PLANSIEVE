SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 0.0
AND u.Reputation >= 482
AND u.Views >= 104
AND u.Views <= 813
AND u.UpVotes = 96
AND v.CreationDate >= 168
AND v.CreationDate <= 1401
AND u.CreationDate >= 31
AND u.CreationDate <= 941

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;