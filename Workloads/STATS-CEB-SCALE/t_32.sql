SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount>=0
AND u.Reputation>=1
AND u.Views>=0
AND u.Views<=110
AND u.UpVotes=0
AND v.CreationDate>=34
AND v.CreationDate<=1539
AND u.CreationDate>=36
AND u.CreationDate<=1514

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;